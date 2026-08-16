.class public final synthetic Lz9/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz9/i$b;


# direct methods
.method public synthetic constructor <init>(Lz9/i$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz9/j;->b:Lz9/i$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz9/j;->b:Lz9/i$b;

    invoke-static {v0}, Lz9/i$b;->a(Lz9/i$b;)V

    return-void
.end method
