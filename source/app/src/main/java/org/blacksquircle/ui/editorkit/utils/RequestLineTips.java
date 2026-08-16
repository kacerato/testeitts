package org.blacksquircle.ui.editorkit.utils;

public interface RequestLineTips {

    public enum Type {
        None,
        Error,
        Alert
    }

    Type getTypeForLine(int line, boolean isLatest);

    void showLineTips(int line, int x10, int y10, boolean isLatest);
}
