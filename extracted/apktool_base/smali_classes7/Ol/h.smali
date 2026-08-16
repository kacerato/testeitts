.class public LOl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:[LOl/j;


# direct methods
.method public varargs constructor <init>([LOl/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, [LOl/j;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LOl/j;

    iput-object p1, p0, LOl/h;->b:[LOl/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "at least one LMSKeyGenParameterSpec required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[LOl/j;
    .locals 1

    iget-object v0, p0, LOl/h;->b:[LOl/j;

    invoke-virtual {v0}, [LOl/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOl/j;

    return-object v0
.end method
