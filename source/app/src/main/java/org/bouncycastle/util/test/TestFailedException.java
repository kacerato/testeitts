package org.bouncycastle.util.test;

import hm.i;

public class TestFailedException extends RuntimeException {
    private i _result;

    public TestFailedException(i iVar) {
        this._result = iVar;
    }

    public i getResult() {
        return this._result;
    }
}
