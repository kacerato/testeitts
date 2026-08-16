package org.eclipse.jdt.internal.core.search.indexing;

public class ReadWriteMonitor {
    private int status = 0;

    public synchronized void enterRead() {
        while (true) {
            int i10 = this.status;
            if (i10 >= 0) {
                this.status = i10 + 1;
            } else {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public synchronized void enterWrite() {
        while (true) {
            int i10 = this.status;
            if (i10 == 0) {
                this.status = i10 - 1;
            } else {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public synchronized void exitRead() {
        int i10 = this.status - 1;
        this.status = i10;
        if (i10 == 0) {
            notifyAll();
        }
    }

    public synchronized boolean exitReadEnterWrite() {
        if (this.status != 1) {
            return false;
        }
        this.status = -1;
        return true;
    }

    public synchronized void exitWrite() {
        int i10 = this.status + 1;
        this.status = i10;
        if (i10 == 0) {
            notifyAll();
        }
    }

    public synchronized void exitWriteEnterRead() {
        exitWrite();
        enterRead();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = this.status;
        if (i10 == 0) {
            stringBuffer.append("Monitor idle ");
        } else if (i10 < 0) {
            stringBuffer.append("Monitor writing ");
        } else if (i10 > 0) {
            stringBuffer.append("Monitor reading ");
        }
        stringBuffer.append("(status = ");
        stringBuffer.append(this.status);
        stringBuffer.append(")");
        return stringBuffer.toString();
    }
}
