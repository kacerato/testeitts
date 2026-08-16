package com.github.javaparser;

import java.io.IOException;

public interface CharStream {
    void backup(int amount);

    char beginToken() throws IOException;

    void done();

    int getBeginColumn();

    int getBeginLine();

    int getEndColumn();

    int getEndLine();

    String getImage();

    char[] getSuffix(int len);

    int getTabSize();

    boolean isTrackLineColumn();

    char readChar() throws IOException;

    void setTabSize(int i10);

    void setTrackLineColumn(boolean trackLineColumn);
}
