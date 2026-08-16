.class public final synthetic Lnn/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lnn/t;

.field public final synthetic c:Ljn/A;

.field public final synthetic d:Lnn/m;


# direct methods
.method public synthetic constructor <init>(Lnn/t;Ljn/A;Lnn/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnn/s;->b:Lnn/t;

    iput-object p2, p0, Lnn/s;->c:Ljn/A;

    iput-object p3, p0, Lnn/s;->d:Lnn/m;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lnn/s;->b:Lnn/t;

    iget-object v1, p0, Lnn/s;->c:Ljn/A;

    iget-object v2, p0, Lnn/s;->d:Lnn/m;

    check-cast p1, [F

    check-cast p2, Ljava/lang/Float;

    invoke-static {v0, v1, v2, p1, p2}, Lnn/t;->e(Lnn/t;Ljn/A;Lnn/m;[FLjava/lang/Float;)Ljn/U;

    move-result-object p1

    return-object p1
.end method
