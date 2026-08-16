.class public final synthetic LN6/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC5/n;


# instance fields
.field public final synthetic a:LN6/p;


# direct methods
.method public synthetic constructor <init>(LN6/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/n;->a:LN6/p;

    return-void
.end method


# virtual methods
.method public final refresh(I)V
    .locals 1

    iget-object v0, p0, LN6/n;->a:LN6/p;

    invoke-static {v0, p1}, LN6/p;->g(LN6/p;I)V

    return-void
.end method
