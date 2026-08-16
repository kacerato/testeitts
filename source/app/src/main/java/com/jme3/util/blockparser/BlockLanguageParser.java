package com.jme3.util.blockparser;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public class BlockLanguageParser {
    private Statement lastStatement;
    private Reader reader;
    private final ArrayList<Statement> statementStack = new ArrayList<>();
    private int lineNumber = 1;

    private BlockLanguageParser() {
    }

    private void load(InputStream inputStream) throws IOException {
        reset();
        this.reader = new InputStreamReader(inputStream, "UTF-8");
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        char c10 = 0;
        while (true) {
            int read = this.reader.read();
            char c11 = (char) read;
            if (c11 != '\r') {
                if (z10 && c11 == '\n') {
                    z10 = false;
                } else if (c11 == '/' && c10 == '/') {
                    sb2.deleteCharAt(sb2.length() - 1);
                    pushStatement(sb2);
                    this.lineNumber++;
                    c10 = 0;
                    z10 = true;
                } else if (z10) {
                    continue;
                } else if (read == -1 || c11 == '{' || c11 == '}' || c11 == '\n' || c11 == ';') {
                    pushStatement(sb2);
                    if (c11 == '{') {
                        this.statementStack.add(this.lastStatement);
                    } else if (c11 == '}') {
                        ArrayList<Statement> arrayList = this.statementStack;
                        arrayList.remove(arrayList.size() - 1);
                    } else if (c11 == '\n') {
                        this.lineNumber++;
                    } else if (read == -1) {
                        return;
                    }
                    c10 = 0;
                } else {
                    sb2.append(c11);
                    c10 = c11;
                }
            }
        }
    }

    public static List<Statement> parse(InputStream inputStream) throws IOException {
        BlockLanguageParser blockLanguageParser = new BlockLanguageParser();
        blockLanguageParser.load(inputStream);
        return blockLanguageParser.statementStack.get(0).getContents();
    }

    private void pushStatement(StringBuilder sb2) {
        String trim = sb2.toString().trim();
        if (trim.length() > 0) {
            this.lastStatement = new Statement(this.lineNumber, trim);
            this.statementStack.get(r0.size() - 1).addStatement(this.lastStatement);
            sb2.setLength(0);
        }
    }

    private void reset() {
        this.statementStack.clear();
        this.statementStack.add(new Statement(0, "<root>"));
        this.lastStatement = null;
        this.lineNumber = 1;
    }
}
