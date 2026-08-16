.class public Lxn/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxn/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lxn/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lxn/a;


# direct methods
.method public constructor <init>(Lxn/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lxn/a$e;->b:Lxn/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lxn/a;Lxn/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lxn/a$e;-><init>(Lxn/a;)V

    return-void
.end method


# virtual methods
.method public a(Lxn/a$b;Lxn/a$b;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    invoke-static {p1}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p2}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v2

    aget v2, v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p1}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object p1

    aget p1, p1, v1

    invoke-static {p2}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object p2

    aget p2, p2, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    check-cast p1, Lxn/a$b;

    check-cast p2, Lxn/a$b;

    invoke-virtual {p0, p1, p2}, Lxn/a$e;->a(Lxn/a$b;Lxn/a$b;)I

    move-result p1

    return p1
.end method
