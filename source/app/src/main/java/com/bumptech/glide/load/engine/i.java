package com.bumptech.glide.load.engine;

public abstract class i {

    public static final i f59185a = new a();

    public static final i f59186b = new b();

    public static final i f59187c = new c();

    public static final i f59188d = new d();

    public static final i f59189e = new e();

    public class a extends i {
        @Override
        public boolean a() {
            return true;
        }

        @Override
        public boolean b() {
            return true;
        }

        @Override
        public boolean c(C.a aVar) {
            return aVar == C.a.REMOTE;
        }

        @Override
        public boolean d(boolean z10, C.a aVar, C.c cVar) {
            return (aVar == C.a.RESOURCE_DISK_CACHE || aVar == C.a.MEMORY_CACHE) ? false : true;
        }
    }

    public class b extends i {
        @Override
        public boolean a() {
            return false;
        }

        @Override
        public boolean b() {
            return false;
        }

        @Override
        public boolean c(C.a aVar) {
            return false;
        }

        @Override
        public boolean d(boolean z10, C.a aVar, C.c cVar) {
            return false;
        }
    }

    public class c extends i {
        @Override
        public boolean a() {
            return true;
        }

        @Override
        public boolean b() {
            return false;
        }

        @Override
        public boolean c(C.a aVar) {
            return (aVar == C.a.DATA_DISK_CACHE || aVar == C.a.MEMORY_CACHE) ? false : true;
        }

        @Override
        public boolean d(boolean z10, C.a aVar, C.c cVar) {
            return false;
        }
    }

    public class d extends i {
        @Override
        public boolean a() {
            return false;
        }

        @Override
        public boolean b() {
            return true;
        }

        @Override
        public boolean c(C.a aVar) {
            return false;
        }

        @Override
        public boolean d(boolean z10, C.a aVar, C.c cVar) {
            return (aVar == C.a.RESOURCE_DISK_CACHE || aVar == C.a.MEMORY_CACHE) ? false : true;
        }
    }

    public class e extends i {
        @Override
        public boolean a() {
            return true;
        }

        @Override
        public boolean b() {
            return true;
        }

        @Override
        public boolean c(C.a aVar) {
            return aVar == C.a.REMOTE;
        }

        @Override
        public boolean d(boolean z10, C.a aVar, C.c cVar) {
            return ((z10 && aVar == C.a.DATA_DISK_CACHE) || aVar == C.a.LOCAL) && cVar == C.c.TRANSFORMED;
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(C.a aVar);

    public abstract boolean d(boolean z10, C.a aVar, C.c cVar);
}
