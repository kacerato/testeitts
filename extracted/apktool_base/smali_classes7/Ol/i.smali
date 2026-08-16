.class public LOl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final b:[LOl/k;


# direct methods
.method public constructor <init>([LOl/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [LOl/k;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LOl/k;

    iput-object p1, p0, LOl/i;->b:[LOl/k;

    return-void
.end method


# virtual methods
.method public a()[LOl/k;
    .locals 1

    iget-object v0, p0, LOl/i;->b:[LOl/k;

    invoke-virtual {v0}, [LOl/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOl/k;

    return-object v0
.end method
