package org.apache.commons.lang3.concurrent;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.apache.commons.lang3.Validate;

public class MultiBackgroundInitializer extends BackgroundInitializer<MultiBackgroundInitializerResults> {
    private final Map<String, BackgroundInitializer<?>> childInitializers;

    public static class MultiBackgroundInitializerResults {
        private final Map<String, ConcurrentException> exceptions;
        private final Map<String, BackgroundInitializer<?>> initializers;
        private final Map<String, Object> resultObjects;

        private BackgroundInitializer<?> checkName(String str) {
            BackgroundInitializer<?> backgroundInitializer = this.initializers.get(str);
            if (backgroundInitializer != null) {
                return backgroundInitializer;
            }
            throw new NoSuchElementException("No child initializer with name " + str);
        }

        public ConcurrentException getException(String str) {
            checkName(str);
            return this.exceptions.get(str);
        }

        public BackgroundInitializer<?> getInitializer(String str) {
            return checkName(str);
        }

        public Object getResultObject(String str) {
            checkName(str);
            return this.resultObjects.get(str);
        }

        public Set<String> initializerNames() {
            return Collections.unmodifiableSet(this.initializers.o());
        }

        public boolean isException(String str) {
            checkName(str);
            return this.exceptions.containsKey(str);
        }

        public boolean isSuccessful() {
            return this.exceptions.isEmpty();
        }

        private MultiBackgroundInitializerResults(Map<String, BackgroundInitializer<?>> map, Map<String, Object> map2, Map<String, ConcurrentException> map3) {
            this.initializers = map;
            this.resultObjects = map2;
            this.exceptions = map3;
        }
    }

    public MultiBackgroundInitializer() {
        this.childInitializers = new HashMap();
    }

    public void addInitializer(String str, BackgroundInitializer<?> backgroundInitializer) {
        Validate.isTrue(str != null, "Name of child initializer must not be null!", new Object[0]);
        Validate.isTrue(backgroundInitializer != null, "Child initializer must not be null!", new Object[0]);
        synchronized (this) {
            try {
                if (isStarted()) {
                    throw new IllegalStateException("addInitializer() must not be called after start()!");
                }
                this.childInitializers.put(str, backgroundInitializer);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public int getTaskCount() {
        Iterator<BackgroundInitializer<?>> it = this.childInitializers.values().iterator();
        int i10 = 1;
        while (it.hasNext()) {
            i10 += it.next().getTaskCount();
        }
        return i10;
    }

    @Override
    public MultiBackgroundInitializerResults initialize() throws Exception {
        HashMap hashMap;
        synchronized (this) {
            hashMap = new HashMap(this.childInitializers);
        }
        ExecutorService activeExecutor = getActiveExecutor();
        for (V v10 : hashMap.values()) {
            if (v10.getExternalExecutor() == null) {
                v10.setExternalExecutor(activeExecutor);
            }
            v10.start();
        }
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            try {
                hashMap2.put(entry.getKey(), ((BackgroundInitializer) entry.getValue()).get());
            } catch (ConcurrentException e10) {
                hashMap3.put(entry.getKey(), e10);
            }
        }
        return new MultiBackgroundInitializerResults(hashMap, hashMap2, hashMap3);
    }

    public MultiBackgroundInitializer(ExecutorService executorService) {
        super(executorService);
        this.childInitializers = new HashMap();
    }
}
