.class public final synthetic Lx7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lx7/j;


# direct methods
.method public synthetic constructor <init>(Lx7/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/h;->b:Lx7/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx7/h;->b:Lx7/j;

    invoke-static {v0}, Lx7/j;->c(Lx7/j;)V

    return-void
.end method
