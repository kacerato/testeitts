.class public LLi/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)LBi/o;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, LBi/o;->ENCRYPTION:LBi/o;

    goto :goto_0

    :cond_0
    sget-object p0, LBi/o;->DECRYPTION:LBi/o;

    :goto_0
    return-object p0
.end method
