.class public final synthetic LT2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field public final synthetic a:LT2/s;

.field public final synthetic b:LT2/g;


# direct methods
.method public synthetic constructor <init>(LT2/s;LT2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT2/p;->a:LT2/s;

    iput-object p2, p0, LT2/p;->b:LT2/g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LT2/p;->a:LT2/s;

    iget-object v1, p0, LT2/p;->b:LT2/g;

    invoke-static {v0, v1}, LT2/s;->l(LT2/s;LT2/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
