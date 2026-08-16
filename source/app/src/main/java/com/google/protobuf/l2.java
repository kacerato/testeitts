package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

public class l2 {

    public static final Logger f69348b = Logger.getLogger(l2.class.getName());

    public final Map<String, Descriptors.b> f69349a;

    public static final class b {

        public final Set<String> f69350a;

        public Map<String, Descriptors.b> f69351b;

        public b a(Descriptors.b messageType) {
            if (this.f69351b == null) {
                throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
            }
            c(messageType.a());
            return this;
        }

        public b b(Iterable<Descriptors.b> messageTypes) {
            if (this.f69351b == null) {
                throw new IllegalStateException("A TypeRegistry.Builder can only be used once.");
            }
            Iterator<Descriptors.b> it = messageTypes.iterator();
            while (it.hasNext()) {
                c(it.next().a());
            }
            return this;
        }

        public final void c(Descriptors.g file) {
            if (this.f69350a.add(file.b())) {
                Iterator<Descriptors.g> it = file.r().iterator();
                while (it.hasNext()) {
                    c(it.next());
                }
                Iterator<Descriptors.b> it2 = file.u().iterator();
                while (it2.hasNext()) {
                    d(it2.next());
                }
            }
        }

        public final void d(Descriptors.b message) {
            Iterator<Descriptors.b> it = message.u().iterator();
            while (it.hasNext()) {
                d(it.next());
            }
            if (!this.f69351b.containsKey(message.b())) {
                this.f69351b.put(message.b(), message);
                return;
            }
            l2.f69348b.warning("Type " + message.b() + " is added multiple times.");
        }

        public l2 e() {
            l2 l2Var = new l2(this.f69351b);
            this.f69351b = null;
            return l2Var;
        }

        public b() {
            this.f69350a = new HashSet();
            this.f69351b = new HashMap();
        }
    }

    public static class c {

        public static final l2 f69352a = new l2(Collections.emptyMap());
    }

    public l2(Map<String, Descriptors.b> types) {
        this.f69349a = types;
    }

    public static l2 d() {
        return c.f69352a;
    }

    public static String e(String typeUrl) throws InvalidProtocolBufferException {
        String[] split = typeUrl.split("/");
        if (split.length != 1) {
            return split[split.length - 1];
        }
        throw new InvalidProtocolBufferException("Invalid type url found: " + typeUrl);
    }

    public static b f() {
        return new b();
    }

    public Descriptors.b b(String name) {
        return this.f69349a.get(name);
    }

    public final Descriptors.b c(String typeUrl) throws InvalidProtocolBufferException {
        return b(e(typeUrl));
    }
}
