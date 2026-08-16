.class public final synthetic Lyf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/p;


# instance fields
.field public final synthetic b:[Lyf/j;

.field public final synthetic c:Lkotlin/jvm/internal/m0$f;


# direct methods
.method public synthetic constructor <init>([Lyf/j;Lkotlin/jvm/internal/m0$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf/c;->b:[Lyf/j;

    iput-object p2, p0, Lyf/c;->c:Lkotlin/jvm/internal/m0$f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyf/c;->b:[Lyf/j;

    iget-object v1, p0, Lyf/c;->c:Lkotlin/jvm/internal/m0$f;

    check-cast p1, Lnf/P0;

    check-cast p2, Lyf/j$b;

    invoke-static {v0, v1, p1, p2}, Lyf/e;->g([Lyf/j;Lkotlin/jvm/internal/m0$f;Lnf/P0;Lyf/j$b;)Lnf/P0;

    move-result-object p1

    return-object p1
.end method
