# Copyright (c) 2014-2018, The ByteRub Project
#
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are
# permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this list of
#    conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice, this list
#    of conditions and the following disclaimer in the documentation and/or other
#    materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors may be
#    used to endorse or promote products derived from this software without specific
#    prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
# THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
# THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Jekyll::Hooks.register :site, :post_write do |site|
  # Get source, destination and language from the current language build of the site
  source = site.config["source"]
  destination = site.config["destination"]
  lang = site.config["lang"]
  # Now start the real thing by getting the list of user-guides png folders
  guides_dir = File.join(source, "/_i18n/", lang, "/resources/user-guides/png/*")
  guides = Dir.glob(guides_dir)
  # For each guide folder, get the screenshot files
  guides.each do |guide|
    guidename = File.basename(guide)
    files_dir = File.join(guide, "/*")
    files = Dir.glob(files_dir)
    # For each screenshot, do the copy
    files.each do |file|
      if lang == 'en'
        dest_path = "#{destination}/resources/user-guides/png/#{guidename}/"
      else
        dest_path = "#{destination}/#{lang}/resources/user-guides/png/#{guidename}/"
      end
      FileUtils.cp(file, dest_path)
    end
  end
end
