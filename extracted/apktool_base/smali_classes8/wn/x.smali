.class public final synthetic Lwn/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:[F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>([FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwn/x;->b:[F

    iput p2, p0, Lwn/x;->c:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lwn/x;->b:[F

    iget v1, p0, Lwn/x;->c:F

    check-cast p1, [F

    invoke-static {v0, v1, p1}, Lwn/B;->a([FF[F)[F

    move-result-object p1

    return-object p1
.end method
