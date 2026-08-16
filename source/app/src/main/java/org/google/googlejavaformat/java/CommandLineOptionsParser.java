package org.google.googlejavaformat.java;

import com.google.common.collect.C12534j2;
import com.google.common.collect.C12561q1;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.google.googlejavaformat.java.CommandLineOptions;
import w2.AbstractC15885e;
import w2.M;

final class CommandLineOptionsParser {
    private static final M COMMA_SPLITTER = M.h(IIndexConstants.PARAMETER_SEPARATOR);
    private static final M COLON_SPLITTER = M.h(':');
    private static final M ARG_SPLITTER = M.k(AbstractC15885e.g()).g().q();

    private static void expandParamsFiles(Iterable<String> args, List<String> expanded) {
        for (String str : args) {
            if (!str.isEmpty()) {
                if (!str.startsWith("@")) {
                    expanded.add(str);
                } else if (str.startsWith("@@")) {
                    expanded.add(str.substring(1));
                } else {
                    Path path = Paths.get(str.substring(1), new String[0]);
                    try {
                        expandParamsFiles(ARG_SPLITTER.n(new String(Files.readAllBytes(path), StandardCharsets.UTF_8)), expanded);
                    } catch (IOException e10) {
                        throw new UncheckedIOException(((Object) path) + ": could not read file: " + e10.getMessage(), e10);
                    }
                }
            }
        }
    }

    private static String getValue(String flag, Iterator<String> it, String value) {
        if (value != null) {
            return value;
        }
        if (it.hasNext()) {
            return it.next();
        }
        throw new IllegalArgumentException("required value was not provided for: " + flag);
    }

    /* JADX WARN: Code restructure failed: missing block: B:153:0x025a, code lost:
    
        return r3.build();
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0201 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x020a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0213 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x021d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x022c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0231 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0236 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x023f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x024c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0251 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01fc A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CommandLineOptions parse(Iterable<String> options) {
        String str;
        CommandLineOptions.Builder builder = CommandLineOptions.builder();
        ArrayList arrayList = new ArrayList();
        expandParamsFiles(options, arrayList);
        Iterator<? extends String> it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                String next = it.next();
                if (next.startsWith("-")) {
                    int indexOf = next.indexOf(61);
                    if (indexOf >= 0) {
                        String substring = next.substring(0, indexOf);
                        str = next.substring(indexOf + 1, next.length());
                        next = substring;
                    } else {
                        str = null;
                    }
                    next.hashCode();
                    char c10 = '\uffff';
                    switch (next.hashCode()) {
                        case -2083416601:
                            if (next.equals("-replace")) {
                                c10 = 0;
                            }
                            switch (c10) {
                                case 0:
                                case 1:
                                case 11:
                                case '\r':
                                    builder.inPlace(true);
                                    break;
                                case 2:
                                    builder.setExitIfChanged(true);
                                    break;
                                case 3:
                                case 17:
                                case 24:
                                case 26:
                                    parseRangeSet(builder.linesBuilder(), getValue(next, it, str));
                                    break;
                                case 4:
                                case 29:
                                    builder.assumeFilename(getValue(next, it, str));
                                    break;
                                case 5:
                                case '\f':
                                    builder.dryRun(true);
                                    break;
                                case 6:
                                    builder.sortImports(false);
                                    break;
                                case 7:
                                    builder.fixImportsOnly(true);
                                    break;
                                case '\b':
                                    builder.stdin(true);
                                    break;
                                case '\t':
                                case 15:
                                case 22:
                                    builder.aosp(true);
                                    break;
                                case '\n':
                                case 16:
                                case 23:
                                    builder.help(true);
                                    break;
                                case 14:
                                case 27:
                                case 28:
                                    builder.version(true);
                                    break;
                                case 18:
                                case 21:
                                    builder.addLength(parseInteger(it, next, str));
                                    break;
                                case 19:
                                case 25:
                                    builder.addOffset(parseInteger(it, next, str));
                                    break;
                                case 20:
                                    builder.removeUnusedImports(false);
                                    break;
                                default:
                                    throw new IllegalArgumentException("unexpected flag: " + next);
                            }
                        case -1814488812:
                            if (next.equals("--replace")) {
                                c10 = 1;
                            }
                            switch (c10) {
                            }
                            break;
                        case -1761220344:
                            if (next.equals("--set-exit-if-changed")) {
                                c10 = 2;
                            }
                            switch (c10) {
                            }
                            break;
                        case -1620718241:
                            if (next.equals("--lines")) {
                                c10 = 3;
                            }
                            switch (c10) {
                            }
                            break;
                        case -1427706264:
                            if (next.equals("--assume-filename")) {
                                c10 = 4;
                            }
                            switch (c10) {
                            }
                            break;
                        case -976007735:
                            if (next.equals("--dry-run")) {
                                c10 = 5;
                            }
                            switch (c10) {
                            }
                            break;
                        case -688688265:
                            if (next.equals("--skip-sorting-imports")) {
                                c10 = 6;
                            }
                            switch (c10) {
                            }
                            break;
                        case -64267005:
                            if (next.equals("--fix-imports-only")) {
                                c10 = 7;
                            }
                            switch (c10) {
                            }
                            break;
                        case 45:
                            if (next.equals("-")) {
                                c10 = '\b';
                            }
                            switch (c10) {
                            }
                            break;
                        case 1492:
                            if (next.equals("-a")) {
                                c10 = '\t';
                            }
                            switch (c10) {
                            }
                            break;
                        case 1499:
                            if (next.equals("-h")) {
                                c10 = '\n';
                            }
                            switch (c10) {
                            }
                            break;
                        case 1500:
                            if (next.equals("-i")) {
                                c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1505:
                            if (next.equals("-n")) {
                                c10 = '\f';
                            }
                            switch (c10) {
                            }
                            break;
                        case 1509:
                            if (next.equals("-r")) {
                                c10 = CharUtils.CR;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1513:
                            if (next.equals("-v")) {
                                c10 = 14;
                            }
                            switch (c10) {
                            }
                            break;
                        case 44558520:
                            if (next.equals("-aosp")) {
                                c10 = 15;
                            }
                            switch (c10) {
                            }
                            break;
                        case 44757230:
                            if (next.equals("-help")) {
                                c10 = 16;
                            }
                            switch (c10) {
                            }
                            break;
                        case 44880289:
                            if (next.equals("-line")) {
                                c10 = 17;
                            }
                            switch (c10) {
                            }
                            break;
                        case 176596307:
                            if (next.equals("-length")) {
                                c10 = 18;
                            }
                            switch (c10) {
                            }
                            break;
                        case 263180032:
                            if (next.equals("-offset")) {
                                c10 = 19;
                            }
                            switch (c10) {
                            }
                            break;
                        case 304725717:
                            if (next.equals("--skip-removing-unused-imports")) {
                                c10 = 20;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1293650054:
                            if (next.equals("--length")) {
                                c10 = 21;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1332870315:
                            if (next.equals("--aosp")) {
                                c10 = 22;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1333069025:
                            if (next.equals("--help")) {
                                c10 = 23;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1333192084:
                            if (next.equals("--line")) {
                                c10 = 24;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1380233779:
                            if (next.equals("--offset")) {
                                c10 = 25;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1391289074:
                            if (next.equals("-lines")) {
                                c10 = 26;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1468661771:
                            if (next.equals("-version")) {
                                c10 = 27;
                            }
                            switch (c10) {
                            }
                            break;
                        case 1737589560:
                            if (next.equals("--version")) {
                                c10 = 28;
                            }
                            switch (c10) {
                            }
                            break;
                        case 2097866811:
                            if (next.equals("-assume-filename")) {
                                c10 = 29;
                            }
                            switch (c10) {
                            }
                            break;
                        default:
                            switch (c10) {
                            }
                            break;
                    }
                } else {
                    builder.filesBuilder().a(next).d(it);
                }
            }
        }
    }

    private static Integer parseInteger(Iterator<String> it, String flag, String value) {
        try {
            return Integer.valueOf(getValue(flag, it, value));
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException(String.format("invalid integer value for %s: %s", flag, value), e10);
        }
    }

    private static C12534j2<Integer> parseRange(String arg) {
        List<String> o10 = COLON_SPLITTER.o(arg);
        int size = o10.size();
        if (size == 1) {
            int parseInt = Integer.parseInt(o10.get(0));
            return C12534j2.g(Integer.valueOf(parseInt - 1), Integer.valueOf(parseInt));
        }
        if (size != 2) {
            throw new IllegalArgumentException(arg);
        }
        return C12534j2.g(Integer.valueOf(Integer.parseInt(o10.get(0)) - 1), Integer.valueOf(Integer.parseInt(o10.get(1))));
    }

    private static void parseRangeSet(C12561q1.d<Integer> result, String ranges) {
        Iterator<String> it = COMMA_SPLITTER.n(ranges).iterator();
        while (it.hasNext()) {
            result.a(parseRange(it.next()));
        }
    }
}
