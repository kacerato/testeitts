package org.openjdk.tools.javac.main;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CommandLine {

    public static class Tokenizer {

        private int f103252ch;

        private final Reader f103253in;

        public Tokenizer(Reader reader) throws IOException {
            this.f103253in = reader;
            this.f103252ch = reader.read();
        }

        public String nextToken() throws IOException {
            skipWhite();
            if (this.f103252ch == -1) {
                return null;
            }
            StringBuilder sb2 = new StringBuilder();
            char c10 = 0;
            while (true) {
                int i10 = this.f103252ch;
                if (i10 == -1) {
                    return sb2.toString();
                }
                if (i10 != 9) {
                    if (i10 != 10) {
                        if (i10 != 12) {
                            if (i10 == 13) {
                                break;
                            }
                            if (i10 != 32) {
                                if (i10 == 34 || i10 == 39) {
                                    if (c10 == 0) {
                                        c10 = (char) i10;
                                    } else if (c10 == i10) {
                                        c10 = 0;
                                    } else {
                                        sb2.append((char) i10);
                                    }
                                } else if (i10 != 92) {
                                    sb2.append((char) i10);
                                } else {
                                    if (c10 != 0) {
                                        int read = this.f103253in.read();
                                        this.f103252ch = read;
                                        if (read == 10 || read == 13) {
                                            while (true) {
                                                int i11 = this.f103252ch;
                                                if (i11 == 32 || i11 == 10 || i11 == 13 || i11 == 9 || i11 == 12) {
                                                    this.f103252ch = this.f103253in.read();
                                                }
                                            }
                                        } else if (read == 102) {
                                            this.f103252ch = 12;
                                        } else if (read == 110) {
                                            this.f103252ch = 10;
                                        } else if (read == 114) {
                                            this.f103252ch = 13;
                                        } else if (read == 116) {
                                            this.f103252ch = 9;
                                        }
                                    }
                                    sb2.append((char) this.f103252ch);
                                }
                                this.f103252ch = this.f103253in.read();
                            }
                        }
                    } else {
                        break;
                    }
                }
                if (c10 == 0) {
                    return sb2.toString();
                }
                sb2.append((char) i10);
                this.f103252ch = this.f103253in.read();
            }
            return sb2.toString();
        }

        public void skipWhite() throws IOException {
            while (true) {
                int i10 = this.f103252ch;
                if (i10 == -1) {
                    return;
                }
                if (i10 != 9 && i10 != 10 && i10 != 12 && i10 != 13 && i10 != 32) {
                    if (i10 != 35) {
                        return;
                    }
                    this.f103252ch = this.f103253in.read();
                    while (true) {
                        int i11 = this.f103252ch;
                        if (i11 != 10 && i11 != 13 && i11 != -1) {
                            this.f103252ch = this.f103253in.read();
                        }
                    }
                }
                this.f103252ch = this.f103253in.read();
            }
        }
    }

    public static class UnmatchedQuote extends Exception {
        private static final long serialVersionUID = 0;
        public final String variableName;

        public UnmatchedQuote(String str) {
            this.variableName = str;
        }
    }

    private static void appendParsedCommandArgs(List<String> list, List<String> list2) throws IOException {
        for (String str : list2) {
            if (str.length() <= 1 || str.charAt(0) != '@') {
                list.add(str);
            } else {
                String substring = str.substring(1);
                if (substring.charAt(0) == '@') {
                    list.add(substring);
                } else {
                    loadCmdFile(substring, list);
                }
            }
        }
    }

    private static void appendParsedEnvVariables(List<String> list, String str) throws UnmatchedQuote {
        String str2;
        if (str == null || (str2 = System.getenv(str)) == null || str2.trim().isEmpty()) {
            return;
        }
        int length = str2.length();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        char c10 = 0;
        loop0: while (i10 < length) {
            char charAt = str2.charAt(i10);
            if (charAt == '\t' || charAt == '\n' || charAt == '\f' || charAt == '\r' || charAt == ' ') {
                if (c10 == 0) {
                    list.add(sb2.toString());
                    sb2.setLength(0);
                    while (true) {
                        if (charAt == '\f' || charAt == '\n' || charAt == '\r' || charAt == '\t' || charAt == ' ') {
                            i10++;
                            if (i10 >= length) {
                                break loop0;
                            } else {
                                charAt = str2.charAt(i10);
                            }
                        }
                    }
                }
            } else if (charAt == '\"' || charAt == '\'') {
                if (c10 == 0) {
                    c10 = charAt;
                } else if (c10 == charAt) {
                    c10 = 0;
                } else {
                    sb2.append(charAt);
                }
                i10++;
            }
            sb2.append(charAt);
            i10++;
        }
        if (sb2.length() != 0) {
            list.add(sb2.toString());
        }
        if (c10 != 0) {
            throw new UnmatchedQuote(str);
        }
    }

    private static void loadCmdFile(String str, List<String> list) throws IOException {
        BufferedReader newBufferedReader = Files.newBufferedReader(Paths.get(str, new String[0]));
        try {
            Tokenizer tokenizer = new Tokenizer(newBufferedReader);
            while (true) {
                String nextToken = tokenizer.nextToken();
                if (nextToken == null) {
                    break;
                } else {
                    list.add(nextToken);
                }
            }
            if (newBufferedReader != null) {
                newBufferedReader.close();
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                if (newBufferedReader != null) {
                    try {
                        newBufferedReader.close();
                    } catch (Throwable th4) {
                        th2.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        }
    }

    public static String[] parse(String[] strArr) throws IOException {
        ArrayList arrayList = new ArrayList();
        appendParsedCommandArgs(arrayList, Arrays.asList(strArr));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static List<String> parse(String str, List<String> list) throws IOException, UnmatchedQuote {
        ArrayList arrayList = new ArrayList();
        appendParsedEnvVariables(arrayList, str);
        arrayList.addAll(list);
        ArrayList arrayList2 = new ArrayList();
        appendParsedCommandArgs(arrayList2, arrayList);
        return arrayList2;
    }

    public static String[] parse(String str, String[] strArr) throws IOException, UnmatchedQuote {
        List<String> parse = parse(str, (List<String>) Arrays.asList(strArr));
        return (String[]) parse.toArray(new String[parse.size()]);
    }
}
