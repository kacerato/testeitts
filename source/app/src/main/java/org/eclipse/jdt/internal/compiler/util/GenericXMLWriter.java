package org.eclipse.jdt.internal.compiler.util;

import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import w2.C15883c;

public class GenericXMLWriter extends PrintWriter {
    private static final String XML_VERSION = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
    private String lineSeparator;
    private int tab;

    public GenericXMLWriter(OutputStream outputStream, String str, boolean z10) {
        this(new PrintWriter(outputStream), str, z10);
    }

    private static void appendEscapedChar(StringBuffer stringBuffer, char c10) {
        String replacement = getReplacement(c10);
        if (replacement == null) {
            stringBuffer.append(c10);
            return;
        }
        stringBuffer.append('&');
        stringBuffer.append(replacement);
        stringBuffer.append(';');
    }

    private static String getEscaped(String str) {
        StringBuffer stringBuffer = new StringBuffer(str.length() + 10);
        for (int i10 = 0; i10 < str.length(); i10++) {
            appendEscapedChar(stringBuffer, str.charAt(i10));
        }
        return stringBuffer.toString();
    }

    private static String getReplacement(char c10) {
        if (c10 == '\"') {
            return "quot";
        }
        if (c10 == '<') {
            return "lt";
        }
        if (c10 == '>') {
            return "gt";
        }
        if (c10 == '&') {
            return "amp";
        }
        if (c10 != '\'') {
            return null;
        }
        return "apos";
    }

    private void printTabulation() {
        for (int i10 = 0; i10 < this.tab; i10++) {
            print('\t');
        }
    }

    public void endTag(String str, boolean z10, boolean z11) {
        this.tab--;
        printTag(String.valueOf('/') + str, null, z10, z11, false);
    }

    public void printString(String str, boolean z10, boolean z11) {
        if (z10) {
            printTabulation();
        }
        print(str);
        if (z11) {
            print(this.lineSeparator);
        }
    }

    public void printTag(String str, HashMap hashMap, boolean z10, boolean z11, boolean z12) {
        if (z10) {
            printTabulation();
        }
        print('<');
        print(str);
        if (hashMap != null) {
            int size = hashMap.size();
            Map.Entry[] entryArr = new Map.Entry[size];
            hashMap.entrySet().toArray(entryArr);
            Arrays.sort(entryArr, new Comparator() {
                @Override
                public int compare(Object obj, Object obj2) {
                    return ((String) ((Map.Entry) obj).getKey()).compareTo((String) ((Map.Entry) obj2).getKey());
                }
            });
            for (int i10 = 0; i10 < size; i10++) {
                print(C15883c.f126249O);
                print(entryArr[i10].getKey());
                print("=\"");
                print(getEscaped(String.valueOf(entryArr[i10].getValue())));
                print('\"');
            }
        }
        if (z12) {
            print("/>");
        } else {
            print(">");
        }
        if (z11) {
            print(this.lineSeparator);
        }
        if (hashMap == null || z12) {
            return;
        }
        this.tab++;
    }

    public void startTag(String str, boolean z10) {
        printTag(str, null, z10, true, false);
        this.tab++;
    }

    public GenericXMLWriter(Writer writer, String str, boolean z10) {
        super(writer);
        this.tab = 0;
        this.lineSeparator = str;
        if (z10) {
            print(XML_VERSION);
            print(this.lineSeparator);
        }
    }
}
