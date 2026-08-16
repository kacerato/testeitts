package org.openjdk.tools.javac.comp;

import java.util.HashMap;
import org.openjdk.tools.javac.util.Context;

public class CompileStates extends HashMap<Env<AttrContext>, CompileState> {
    protected static final Context.Key<CompileStates> compileStatesKey = new Context.Key<>();
    private static final long serialVersionUID = 1812267524140424433L;
    protected Context context;

    public enum CompileState {
        INIT(0),
        PARSE(1),
        ENTER(2),
        PROCESS(3),
        ATTR(4),
        FLOW(5),
        TRANSTYPES(6),
        UNLAMBDA(7),
        LOWER(8),
        GENERATE(9);

        private final int value;

        CompileState(int i10) {
            this.value = i10;
        }

        public static CompileState max(CompileState compileState, CompileState compileState2) {
            return compileState.value > compileState2.value ? compileState : compileState2;
        }

        public boolean isAfter(CompileState compileState) {
            return this.value > compileState.value;
        }
    }

    public CompileStates(Context context) {
        this.context = context;
        context.put((Context.Key<Context.Key<CompileStates>>) compileStatesKey, (Context.Key<CompileStates>) this);
    }

    public static CompileStates instance(Context context) {
        CompileStates compileStates = (CompileStates) context.get(compileStatesKey);
        return compileStates == null ? new CompileStates(context) : compileStates;
    }

    public boolean isDone(Env<AttrContext> env, CompileState compileState) {
        CompileState compileState2 = get(env);
        return (compileState2 == null || compileState.isAfter(compileState2)) ? false : true;
    }
}
