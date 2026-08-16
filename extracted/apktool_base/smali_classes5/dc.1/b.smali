.class public final synthetic Ldc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ldc/d;


# direct methods
.method public synthetic constructor <init>(Ldc/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc/b;->b:Ldc/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldc/b;->b:Ldc/d;

    invoke-static {v0}, Ldc/d;->n(Ldc/d;)V

    return-void
.end method
