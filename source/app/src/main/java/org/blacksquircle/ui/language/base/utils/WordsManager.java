package org.blacksquircle.ui.language.base.utils;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.blacksquircle.ui.language.base.model.Suggestion;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nWordsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordsManager.kt\norg/blacksquircle/ui/language/base/utils/WordsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"})
public final class WordsManager {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String WORDS_REGEX = "\\w((\\w|-)*(\\w))?";
    private final Pattern wordsPattern = Pattern.compile(WORDS_REGEX);

    @NotNull
    private final HashMap<Integer, LinkedList<Suggestion>> lineMap = new HashMap<>();

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public final void clearLines() {
        synchronized (this.lineMap) {
            this.lineMap.clear();
            P0 p02 = P0.f98194a;
        }
    }

    public final void deleteLine(int i10) {
        synchronized (this.lineMap) {
            this.lineMap.remove(Integer.valueOf(i10));
        }
    }

    @NotNull
    public final Set<Suggestion> getWords() {
        HashSet hashSet = new HashSet();
        synchronized (this.lineMap) {
            try {
                for (LinkedList<Suggestion> linkedList : this.lineMap.values()) {
                    M.o(linkedList, "next(...)");
                    Iterator<Suggestion> it = linkedList.iterator();
                    M.o(it, "iterator(...)");
                    while (it.hasNext()) {
                        Suggestion next = it.next();
                        M.o(next, "next(...)");
                        hashSet.add(next);
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hashSet;
    }

    public final void processLine(int i10, @NotNull String text) {
        M.p(text, "text");
        synchronized (this.lineMap) {
            try {
                LinkedList<Suggestion> linkedList = this.lineMap.get(Integer.valueOf(i10));
                if (linkedList != null) {
                    linkedList.clear();
                }
                Matcher matcher = this.wordsPattern.matcher(text);
                while (matcher.find()) {
                    Suggestion.Type type = Suggestion.Type.WORD;
                    String substring = text.substring(matcher.start(), matcher.end());
                    M.o(substring, "substring(...)");
                    Suggestion suggestion = new Suggestion(type, substring, "");
                    if (this.lineMap.containsKey(Integer.valueOf(i10))) {
                        LinkedList<Suggestion> linkedList2 = this.lineMap.get(Integer.valueOf(i10));
                        if (linkedList2 != null) {
                            linkedList2.add(suggestion);
                        }
                    } else {
                        HashMap<Integer, LinkedList<Suggestion>> hashMap = this.lineMap;
                        Integer valueOf = Integer.valueOf(i10);
                        LinkedList<Suggestion> linkedList3 = new LinkedList<>();
                        linkedList3.add(suggestion);
                        hashMap.put(valueOf, linkedList3);
                    }
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
