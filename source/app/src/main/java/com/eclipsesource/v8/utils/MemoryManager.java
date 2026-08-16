package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.ReferenceHandler;
import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.V8Value;
import java.util.ArrayList;
import java.util.Iterator;

public class MemoryManager {

    private V8 f59466v8;
    private ArrayList<V8Value> references = new ArrayList<>();
    private boolean releasing = false;
    private boolean released = false;
    private MemoryManagerReferenceHandler memoryManagerReferenceHandler = new MemoryManagerReferenceHandler();

    public MemoryManager(V8 v82) {
        this.f59466v8 = v82;
        v82.addReferenceHandler(this.memoryManagerReferenceHandler);
    }

    public int getObjectReferenceCount() {
        checkReleased();
        return this.references.size();
    }

    public void persist(V8Value object) {
        this.f59466v8.getLocker().checkThread();
        checkReleased();
        this.references.remove(object);
    }

    public boolean isReleased() {
        return this.released;
    }

    public void release() {
        this.f59466v8.getLocker().checkThread();
        if (this.released) {
            return;
        }
        this.releasing = true;
        try {
            Iterator<V8Value> it = this.references.iterator();
            while (it.hasNext()) {
                V8Value reference = it.next();
                reference.release();
            }
            this.f59466v8.removeReferenceHandler(this.memoryManagerReferenceHandler);
            this.references.clear();
            this.released = true;
        } finally {
            this.releasing = false;
        }
    }

    private void checkReleased() {
        if (this.released) {
            throw new IllegalStateException("Memory manager released");
        }
    }

    private class MemoryManagerReferenceHandler implements ReferenceHandler {
        private MemoryManagerReferenceHandler() {
        }

        @Override
        public void v8HandleCreated(V8Value object) {
            MemoryManager.this.references.add(object);
        }

        @Override
        public void v8HandleDisposed(V8Value object) {
            if (!MemoryManager.this.releasing) {
                Iterator<V8Value> iterator = MemoryManager.this.references.iterator();
                while (iterator.hasNext()) {
                    if (iterator.next() == object) {
                        iterator.remove();
                        return;
                    }
                }
            }
        }
    }
}
