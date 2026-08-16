.class public final enum Lcom/android/tools/r8/internal/jw;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/jw;

.field public static final enum c:Lcom/android/tools/r8/internal/jw;

.field public static final enum d:Lcom/android/tools/r8/internal/jw;

.field public static final enum e:Lcom/android/tools/r8/internal/jw;

.field public static final enum f:Lcom/android/tools/r8/internal/jw;

.field public static final enum g:Lcom/android/tools/r8/internal/jw;

.field public static final enum h:Lcom/android/tools/r8/internal/jw;

.field public static final enum i:Lcom/android/tools/r8/internal/jw;

.field public static final enum j:Lcom/android/tools/r8/internal/jw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x0

    const-string v2, "OBJECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->b:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x1

    const-string v2, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->c:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x2

    const-string v2, "BYTE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->d:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x3

    const-string v2, "CHAR"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->e:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x4

    const-string v2, "SHORT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->f:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x5

    const-string v2, "INT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->g:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x6

    const-string v2, "FLOAT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->h:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/4 v1, 0x7

    const-string v2, "LONG"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->i:Lcom/android/tools/r8/internal/jw;

    new-instance v0, Lcom/android/tools/r8/internal/jw;

    const/16 v1, 0x8

    const-string v2, "DOUBLE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/jw;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/jw;->j:Lcom/android/tools/r8/internal/jw;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(C)Lcom/android/tools/r8/internal/jw;
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_6

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_5

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56

    if-eq p0, v0, :cond_3

    const/16 v0, 0x49

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid descriptor char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/jw;->j:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/jw;->e:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/jw;->d:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/jw;->c:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/jw;->i:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/jw;->g:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/bJ;

    const-string v0, "No member type for void type."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/jw;->f:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/tools/r8/internal/jw;->b:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/tools/r8/internal/jw;->h:Lcom/android/tools/r8/internal/jw;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
