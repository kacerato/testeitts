package L6;

import java.util.List;

public final class e extends a {
    @Override
    public String a(String receiverExpression, Class<?> receiverType) {
        if (receiverType == null) {
            return null;
        }
        if (receiverType.isArray()) {
            return receiverExpression + ".length";
        }
        if (!List.class.isAssignableFrom(receiverType)) {
            return null;
        }
        return receiverExpression + ".size()";
    }

    @Override
    public boolean x(Class<?> receiverType) {
        return receiverType != null && (receiverType.isArray() || List.class.isAssignableFrom(receiverType));
    }
}
