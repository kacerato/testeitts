package L6;

public final class c extends a {
    @Override
    public String a(String receiverExpression, Class<?> receiverType) {
        return receiverExpression;
    }

    @Override
    public boolean x(Class<?> receiverType) {
        return receiverType == Double.TYPE || receiverType == Double.class;
    }
}
