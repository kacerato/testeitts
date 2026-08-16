package org.eclipse.jdt.internal.compiler.lookup;

public interface Substitution {

    public static class NullSubstitution implements Substitution {
        LookupEnvironment environment;

        public NullSubstitution(LookupEnvironment lookupEnvironment) {
            this.environment = lookupEnvironment;
        }

        @Override
        public LookupEnvironment environment() {
            return this.environment;
        }

        @Override
        public boolean isRawSubstitution() {
            return false;
        }

        @Override
        public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
            return typeVariableBinding;
        }
    }

    LookupEnvironment environment();

    boolean isRawSubstitution();

    TypeBinding substitute(TypeVariableBinding typeVariableBinding);
}
