.class public Lo6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo6/a;->I1(Lo6/b;Lo6/i;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo6/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lo6/a;


# direct methods
.method public constructor <init>(Lo6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lo6/a$a;->b:Lo6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo6/f;Lo6/f;)I
    .locals 2
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

    invoke-virtual {p1}, Lo6/f;->c()I

    move-result v0

    invoke-virtual {p2}, Lo6/f;->c()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lo6/f;->c()I

    move-result p2

    invoke-virtual {p1}, Lo6/f;->c()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lo6/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lo6/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

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

    check-cast p1, Lo6/f;

    check-cast p2, Lo6/f;

    invoke-virtual {p0, p1, p2}, Lo6/a$a;->a(Lo6/f;Lo6/f;)I

    move-result p1

    return p1
.end method
