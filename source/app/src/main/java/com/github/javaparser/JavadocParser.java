package com.github.javaparser;

import com.github.javaparser.ast.comments.JavadocComment;
import com.github.javaparser.javadoc.Javadoc;
import com.github.javaparser.javadoc.JavadocBlockTag;
import com.github.javaparser.javadoc.description.JavadocDescription;
import com.github.javaparser.utils.LineSeparator;
import com.github.javaparser.utils.Utils;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class JavadocParser {
    private static String BLOCK_TAG_PREFIX = "@";
    private static Pattern BLOCK_PATTERN = Pattern.compile("^\\s*" + BLOCK_TAG_PREFIX, 8);

    private static List<String> cleanLines(String content) {
        String[] split = content.split(LineSeparator.SYSTEM.asRawString());
        if (split.length == 0) {
            return Collections.emptyList();
        }
        List<String> list = (List) ((List) Arrays.stream(split).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$cleanLines$3;
                lambda$cleanLines$3 = JavadocParser.lambda$cleanLines$3((String) obj);
                return lambda$cleanLines$3;
            }
        }).collect(Collectors.toList())).stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$cleanLines$4;
                lambda$cleanLines$4 = JavadocParser.lambda$cleanLines$4((String) obj);
                return lambda$cleanLines$4;
            }
        }).collect(Collectors.toList());
        if (!list.get(0).isEmpty() && (list.get(0).charAt(0) == ' ' || list.get(0).charAt(0) == '\t')) {
            list.set(0, list.get(0).substring(1));
        }
        while (list.size() > 0 && list.get(0).trim().isEmpty()) {
            list = list.subList(1, list.size());
        }
        while (list.size() > 0 && list.get(list.size() - 1).trim().isEmpty()) {
            list = list.subList(0, list.size() - 1);
        }
        return list;
    }

    public static boolean isABlockLine(String line) {
        return line.trim().startsWith(BLOCK_TAG_PREFIX);
    }

    public static String lambda$cleanLines$3(String l10) {
        char charAt;
        int startsWithAsterisk = startsWithAsterisk(l10);
        if (startsWithAsterisk == -1) {
            return l10;
        }
        int i10 = startsWithAsterisk + 1;
        return (l10.length() <= i10 || !((charAt = l10.charAt(i10)) == ' ' || charAt == '\t')) ? l10.substring(i10) : l10.substring(startsWithAsterisk + 2);
    }

    public static String lambda$cleanLines$4(String l10) {
        return l10.trim().isEmpty() ? "" : l10;
    }

    public static boolean lambda$parse$0(String s12) {
        return !s12.isEmpty();
    }

    public static String lambda$parse$1(String s10) {
        return BLOCK_TAG_PREFIX + s10;
    }

    public static void lambda$parse$2(final Javadoc document, String l10) {
        document.addBlockTag(parseBlockTag(l10));
    }

    public static Javadoc parse(JavadocComment comment) {
        return parse(comment.getContent());
    }

    private static JavadocBlockTag parseBlockTag(String line) {
        String substring = line.trim().substring(1);
        String nextWord = Utils.nextWord(substring);
        return new JavadocBlockTag(nextWord, substring.substring(nextWord.length()).trim());
    }

    public static int startsWithAsterisk(String line) {
        int startsWithAsterisk;
        if (line.startsWith("*")) {
            return 0;
        }
        if ((line.startsWith(" ") || line.startsWith("\t")) && line.length() > 1 && (startsWithAsterisk = startsWithAsterisk(line.substring(1))) != -1) {
            return startsWithAsterisk + 1;
        }
        return -1;
    }

    private static String trimRight(String string) {
        while (!string.isEmpty() && Character.isWhitespace(string.charAt(string.length() - 1))) {
            string = string.substring(0, string.length() - 1);
        }
        return string;
    }

    public static Javadoc parse(String commentContent) {
        List list;
        String str;
        LineSeparator lineSeparator = LineSeparator.SYSTEM;
        final List<String> cleanLines = cleanLines(Utils.normalizeEolInTextBlock(commentContent, lineSeparator));
        int intValue = ((Integer) cleanLines.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean isABlockLine;
                isABlockLine = JavadocParser.isABlockLine((String) obj);
                return isABlockLine;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Integer.valueOf(List.this.indexOf((String) obj));
            }
        }).findFirst().orElse(-1)).intValue();
        if (intValue == -1) {
            str = trimRight(String.join(lineSeparator.asRawString(), cleanLines));
            list = Collections.emptyList();
        } else {
            String trimRight = trimRight(String.join(lineSeparator.asRawString(), cleanLines.subList(0, intValue)));
            list = (List) BLOCK_PATTERN.splitAsStream((String) cleanLines.subList(intValue, cleanLines.size()).stream().collect(Collectors.joining(lineSeparator.asRawString()))).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$parse$0;
                    lambda$parse$0 = JavadocParser.lambda$parse$0((String) obj);
                    return lambda$parse$0;
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    String lambda$parse$1;
                    lambda$parse$1 = JavadocParser.lambda$parse$1((String) obj);
                    return lambda$parse$1;
                }
            }).collect(Collectors.toList());
            str = trimRight;
        }
        final Javadoc javadoc = new Javadoc(JavadocDescription.parseText(str));
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                JavadocParser.lambda$parse$2(Javadoc.this, (String) obj);
            }
        });
        return javadoc;
    }
}
