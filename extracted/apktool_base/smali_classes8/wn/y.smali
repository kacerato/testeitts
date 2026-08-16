.class public final synthetic Lwn/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:[F

.field public final synthetic c:[[F


# direct methods
.method public synthetic constructor <init>([F[[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwn/y;->b:[F

    iput-object p2, p0, Lwn/y;->c:[[F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lwn/y;->b:[F

    iget-object v1, p0, Lwn/y;->c:[[F

    check-cast p1, [F

    invoke-static {v0, v1, p1}, Lwn/B;->d([F[[F[F)[F

    move-result-object p1

    return-object p1
.end method
