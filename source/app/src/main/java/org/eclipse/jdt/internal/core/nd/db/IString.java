package org.eclipse.jdt.internal.core.nd.db;

public interface IString {
    int compare(String str, boolean z10) throws IndexException;

    int compare(IString iString, boolean z10) throws IndexException;

    int compare(char[] cArr, boolean z10) throws IndexException;

    int compareCompatibleWithIgnoreCase(IString iString) throws IndexException;

    int compareCompatibleWithIgnoreCase(char[] cArr) throws IndexException;

    int comparePrefix(char[] cArr, boolean z10) throws IndexException;

    void delete() throws IndexException;

    char[] getChars() throws IndexException;

    long getRecord();

    String getString() throws IndexException;

    int length();
}
