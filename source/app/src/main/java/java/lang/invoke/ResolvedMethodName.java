package java.lang.invoke;

final class ResolvedMethodName {
    private Class<?> vmholder;

    ResolvedMethodName() {
    }

    public Class<?> declaringClass() {
        return this.vmholder;
    }
}
