.class public LK6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK6/a;->i(Ljava/util/List;)LM6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "LM6/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LK6/a;


# direct methods
.method public constructor <init>(LK6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LK6/a$b;->b:LK6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LM6/b;LM6/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    iget-object v0, p1, LM6/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, LM6/b;->a:Ljava/lang/String;

    :goto_0
    iget-object v1, p2, LM6/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p2, LM6/b;->a:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, LK6/a$b;->b:LK6/a;

    invoke-static {v2, v0}, LK6/a;->b(LK6/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LK6/a$b;->b:LK6/a;

    invoke-static {v3, v1}, LK6/a;->b(LK6/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    iget-object v2, p0, LK6/a$b;->b:LK6/a;

    invoke-static {v2, v0}, LK6/a;->c(LK6/a;Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, LK6/a$b;->b:LK6/a;

    invoke-static {v2, v1}, LK6/a;->c(LK6/a;Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    return p1

    :cond_4
    iget-object p1, p1, LM6/b;->a:Ljava/lang/String;

    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    iget-object p2, p2, LM6/b;->a:Ljava/lang/String;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, p2

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

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
            "left",
            "right"
        }
    .end annotation

    check-cast p1, LM6/b;

    check-cast p2, LM6/b;

    invoke-virtual {p0, p1, p2}, LK6/a$b;->a(LM6/b;LM6/b;)I

    move-result p1

    return p1
.end method
