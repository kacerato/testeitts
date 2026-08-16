package Ng;

public enum a {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);

    public final int httpCode;

    a(int i10) {
        this.httpCode = i10;
    }

    public static a a(int i10) {
        for (a aVar : values()) {
            if (aVar.httpCode == i10) {
                return aVar;
            }
        }
        return null;
    }
}
