package L6;

public final class g extends a {
    @Override
    public String a(String receiverExpression, Class<?> receiverType) {
        return receiverExpression;
    }

    @Override
    public boolean x(Class<?> receiverType) {
        return receiverType == Integer.TYPE || receiverType == Integer.class;
    }
}
