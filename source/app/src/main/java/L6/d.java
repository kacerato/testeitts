package L6;

public final class d extends a {
    @Override
    public String a(String receiverExpression, Class<?> receiverType) {
        return receiverExpression;
    }

    @Override
    public boolean x(Class<?> receiverType) {
        return receiverType == Float.TYPE || receiverType == Float.class;
    }
}
