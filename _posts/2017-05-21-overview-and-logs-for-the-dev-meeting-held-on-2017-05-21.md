---
layout: post
title: Overview and Logs for the Dev Meeting Held on 2017-05-21
summary: Sub / disposable addresses, new website, CLI/GUI lightwallet integration
tags: [dev diaries, core, crypto]
author: dEBRUYNE / fluffypony
---

# Overview  

An overview [can be found on ByteRubBase](https://byterubbase.com/wiki/DevMeeting_2017-05-21).  

# Logs  

**\<endogenic>** we have to do the dev meeting really quietly so the pony can get some sleep  
**\<byterubmooo>** 1.    Greetings  
**\<byterubmooo>** 2.    Brief review of what's been completed since the previous meeting  
**\<byterubmooo>** 3.    Code + ticket discussion / Q & A  
**\<byterubmooo>** 4.    Any additional meeting items  
**\<byterubmooo>** 5.    Confirm next meeting date/time  
**\<byterubmooo>** (no relay bot btw)  
**\<byterubmooo>** So, since last time, I'm not sure what's been merged. Not much I think ? There was the key image flaw made public too.  
**\<byterubmooo>** I'm working on abstracting network addresses. Mostly works, but serialization is being a massive pain.  
**\<byterubmooo>** Anyone else want to say anything about what they're working on ?  
**\<vtnerd>** eventually I hope to have the amd64-51-30k speedups in wallet2.cpp (assuming fluffy approves)  
**\<vtnerd>** and improve the hex -> bin performance would be nice too (not nearly ready for a merge though)  
**\<byterubmooo>** What is that short for ?  
**\<vtnerd>** oh sorry, the ASM for wallet scanning  
**\<byterubmooo>** What are the 51 and 30k short for ?  
**\<vtnerd>** its already written so that it can be removed by cmake, and does not touch the consensus code _at all_  
**\<vtnerd>** 51-bit limbs and 30k tables  
**\<vtnerd>** 30k table singular, sorry  
**\<byterubmooo>** Anyone else doing something nice ? hyc, LMDB wallet code maybe ? :)  
**\<byterubmooo>** Nobody else ? tewinget ?  
**\<vtnerd>** everyone is out spending bytecoins  
**\<byterubmooo>** Alright. Ticket discussion. The only thing I know is people reporting sync stopping. Some of them are user error, some are corrupt db, but I think there may be something else. I'd need to see good logs for both sides though.  
**\<byterubmooo>** Anyone wants to say anything about pending bugs ?  
**\<iDunk>** Testing related... your 1982 works nicely, with no apparent issues after several days. That on a daemon with none to very light load, fwiw.  
**\<byterubmooo>** Cool, thanks.  
**\<byterubmooo>** About pending bugs: we're still waiting for finalization of the disposable address theory, IIRC RandomRun and knacc were discussing a change recently.  
**\<byterubmooo>** knaccc: any comment about this ?  
**\<iDunk>** I'm syncing on Windows right now, albeit with non-default settings. Will report if it gets wedged.  
**\<vtnerd>** change to which portion, disposable addresses or sub-addresses?  
**\<vtnerd>** or I guess you specifically said disposable address  
**\<byterubmooo>** I don't remember. It's 1753.  
**\<byterubmooo>** I did, but not on purpose :)  
**\<byterubmooo>** I have a feeling it'll be a fast meeting.  
**\<byterubmooo>** luigi1112: anything new about smaller range proofs ?  
**\<endogenic>** he's out spending bytecoin too  
**\<jollymort>** happened to me today (sync); it just hanged; killed the process and restarted byterubd; continued seamlessly  
**\<jollymort>** can re-sync with different loglvl to see if it happens again  
**\<byterubmooo>** Next time, don't kill it before you've looked at the thread stack traces.  
**\<byterubmooo>** Anything else someone wants to say in the meeting ?  
**\<rehrar>** Kovri test site? :D Not super dev-y, but nobody else says anything.  
**\<byterubmooo>** Kovri meeting is in 48 minutes.  
**\<rehrar>** there is no kovri meeting today  
**\<byterubmooo>** aw... then feel free.  
**\<byterubmooo>** anonimal: around ?  
**\<luigi1112>** byterubmooo sorry no. will update soooooon  
**\<byterubmooo>** ty  
**\<byterubmooo>** Hmm.  
**\<luigi1112>** next meeting will be exciting :-)  
**\<byterubmooo>** Well, no test site either then.  
**\<unknownids>** oh baby i know what that means  
**\<unknownids>** i think  
**\<byterubmooo>** Next meeting: in two weeks, same time.  
**\<byterubmooo>** Done. The only good meetings are short meetings.  
**\<luigi1112>** am I doing this right  
**\<luigi1112>** ann of ann  
**\<jollymort>** mooo, how to use stacktrace?  
**\<byterubmooo>** Oh he's back now :)  
**\<byterubmooo>** jollymort: gdb /path/to/byterubd `pidof byterubd`  
**\<byterubmooo>** thread apply all bt  
**\<jollymort>** so i can do it while it's running  
**\<byterubmooo>** Yes.  
**\<jollymort>** no need to start it in some special way?  
**\<jollymort>** ok  
**\<jollymort>** i'll set loglvl to max also  
**\<jollymort>** and start sync from 0  
**\<byterubmooo>** I wouldn't.  
**\<jollymort>** ok, so just restart and wait for it to hang?  
**\<byterubmooo>** 3 and 4 are toop spammy for being much use in general usage.  
**\<byterubmooo>** Yes.  
**\<byterubmooo>** rehrar: free free if you have something to say/show.  
**\<rehrar>** Anyways, ByteRub test site here: http://45.32.161.183/ mobile responsive now and a brand new mobile navigation.  
**\<rehrar>** Kovri test site: http://45.32.171.42/ completely integrated into the Jekyll. The custom CSS framework was ported without issue. This bodes well for my further work on getbyterub.org.  
**\<byterubmooo>** Looks clean.  
**\<Jaquee>** hi. a bit late to meeting. i'm working on lightwallet integration in cli and gui  
**\<Jaquee>** or wallet2 mostly  
**\<byterubmooo>** You mean mybyterub ?  
**\<rehrar>** We scrubbed it down.  
**\<Jaquee>** yeah. and openbyterub  
**\<Jaquee>** should work with both backends  
**\<Jaquee>** and should be switchable from full wallet to light wallet. vtnerd. would you consider implementing input/output import in mybyterub api?  
**\<Jaquee>** https://github.com/byterubexamples/openbyterub/issues/21  
**\<Jaquee>** would make it possible to switch from full wallet to light wallet without a rescan  
**\<endogenic>** not clear how the mobile experience would go  
**\<endogenic>** just an initial impression  
**\<Jaquee>** ?  
**\<Jaquee>** experience of what?  
**\<endogenic>** as in how user gets wallet file on their mobile and how they pick it  
**\<vtnerd>** I don't know what you mean Jacquee  
**\<vtnerd>** you want to import an existing wallet quickly from a local DB to a mybyterub backend ?  
**\<vtnerd>** and also the other direction ?  
**\<luigi1112>** that would be cool. maybe :-)  
**\<Jaquee>** yeah. if i have a full wallet on my desktop and want to use the same wallet on my mobile. I could convert my full wallet to lightwallet by sending my inputs/outputs to mybyterub/openbyterub backend. And then login as usual on my phone  
**\<Jaquee>** with seed  
**\<Jaquee>** without paying the 1 xmr rescan fee  
**\<Jaquee>** that was my idea  
**\<Jaquee>** so the magic happens in desktop wallet.  
**\<Jaquee>** on mobile you only login as usual  
**\<vtnerd>** yeah, but its doable but I would have to think about it a bit  
**\<vtnerd>** the backend would still want to verify correctness, so its not stomping on someone elses coins, etc  
**\<vtnerd>** but it would be doing much less work  
**\<Jaquee>** ok. yeah backend could verify with view key  
**\<Jaquee>** that's probably best  
**\<vtnerd>** yes. but it would only be looking at the set of outputs specified in the RPC call which will be much faster  
**\<Jaquee>** exactly  
**\<endogenic>** Jaquee: ic  
**\<vtnerd>** yeah so the import out will be much easier, and you can almost do it with unspent_outs call  
**\<vtnerd>** *export I think is what normal people say  
**\<Jaquee>** yeah. i'm almost done with that  
**\<Jaquee>** i'm trying to make wallet2 fully compatible so i can switch between light wallet and using a normal node  
**\<vtnerd>** well I meant but the export from the backend side, but ok interesting that you've already started the wallet side  
**\<vtnerd>** yup, understood  
**\<zueore>** how byterub is configured to only cpu/gpu mining?  
**\<Jaquee>** so, to summarize. if i create the mybyterub wallet first i can already switch between full and light wallet mode. This import call i'm suggesting also makes it possible to switch from an old full wallet never initialized on mybyterub.  
**\<vtnerd>** ok  