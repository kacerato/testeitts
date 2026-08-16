.class public final synthetic Ljn/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljn/A;

.field public final synthetic c:[F

.field public final synthetic d:[F

.field public final synthetic e:Ljn/L;

.field public final synthetic f:Ljn/I;


# direct methods
.method public synthetic constructor <init>(Ljn/A;[F[FLjn/L;Ljn/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljn/z;->b:Ljn/A;

    iput-object p2, p0, Ljn/z;->c:[F

    iput-object p3, p0, Ljn/z;->d:[F

    iput-object p4, p0, Ljn/z;->e:Ljn/L;

    iput-object p5, p0, Ljn/z;->f:Ljn/I;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ljn/z;->b:Ljn/A;

    iget-object v1, p0, Ljn/z;->c:[F

    iget-object v2, p0, Ljn/z;->d:[F

    iget-object v3, p0, Ljn/z;->e:Ljn/L;

    iget-object v4, p0, Ljn/z;->f:Ljn/I;

    move-object v5, p1

    check-cast v5, Ljn/s;

    invoke-static/range {v0 .. v5}, Ljn/A;->a(Ljn/A;[F[FLjn/L;Ljn/I;Ljn/s;)V

    return-void
.end method
