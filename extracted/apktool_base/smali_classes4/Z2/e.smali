.class public final synthetic LZ2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/k;


# instance fields
.field public final synthetic a:LT2/F;


# direct methods
.method public synthetic constructor <init>(LT2/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ2/e;->a:LT2/F;

    return-void
.end method


# virtual methods
.method public final a(LT2/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LZ2/e;->a:LT2/F;

    invoke-static {v0, p1}, LZ2/g;->e(LT2/F;LT2/h;)LZ2/g;

    move-result-object p1

    return-object p1
.end method
