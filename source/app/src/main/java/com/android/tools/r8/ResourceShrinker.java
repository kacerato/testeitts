package com.android.tools.r8;

import com.android.tools.r8.BaseCommand;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.utils.C11662i;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;

@Deprecated
public final class ResourceShrinker {

    public static final class Builder extends BaseCommand.Builder<Command, Builder> {
        public Builder() {
            super(C11662i.b());
        }

        @Override
        public final BaseCommand.Builder c() {
            return this;
        }

        @Override
        public final BaseCommand makeCommand() {
            return new Command(a().a());
        }
    }

    public static final class Command extends BaseCommand {
        public Command(C11662i c11662i) {
            super(c11662i);
        }

        @Override
        public C8570nJ b() {
            return new C8570nJ();
        }
    }

    public interface ReferenceChecker {
        default void endClassVisit(ClassReference classReference) {
        }

        default void endMethodVisit(MethodReference methodReference) {
        }

        void referencedInt(int i10);

        void referencedMethod(String str, String str2, String str3);

        void referencedStaticField(String str, String str2);

        void referencedString(String str);

        boolean shouldProcess(String str);

        default void startClassVisit(ClassReference classReference) {
        }

        default void startMethodVisit(MethodReference methodReference) {
        }
    }

    public static void run(Command command, ReferenceChecker referenceChecker) throws IOException, ExecutionException {
        runForTesting(command.a(), command.b(), referenceChecker);
    }

    public static void runForTesting(C11662i c11662i, C8570nJ c8570nJ, ReferenceChecker referenceChecker) throws IOException, ExecutionException {
        runForTesting(new C4303c(c11662i, c8570nJ, new C8659ns0("resource shrinker analyzer", false)).a().d(), referenceChecker);
    }

    public static void runForTesting(Collection<com.android.tools.r8.graph.H2> collection, ReferenceChecker referenceChecker) {
        Iterator<com.android.tools.r8.graph.H2> it = collection.iterator();
        while (it.hasNext()) {
            new C11620t0(it.next(), referenceChecker).a();
        }
    }
}
