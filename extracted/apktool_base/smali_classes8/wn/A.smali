.class public final synthetic Lwn/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:[F

.field public final synthetic c:[F

.field public final synthetic d:[F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>([F[F[FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwn/A;->b:[F

    iput-object p2, p0, Lwn/A;->c:[F

    iput-object p3, p0, Lwn/A;->d:[F

    iput p4, p0, Lwn/A;->e:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lwn/A;->b:[F

    iget-object v1, p0, Lwn/A;->c:[F

    iget-object v2, p0, Lwn/A;->d:[F

    iget v3, p0, Lwn/A;->e:F

    check-cast p1, [F

    invoke-static {v0, v1, v2, v3, p1}, Lwn/B;->e([F[F[FF[F)[F

    move-result-object p1

    return-object p1
.end method
