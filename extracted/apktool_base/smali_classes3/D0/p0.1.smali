.class public final synthetic LD0/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LD0/j;


# direct methods
.method public synthetic constructor <init>(LD0/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/p0;->b:LD0/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LD0/p0;->b:LD0/j;

    invoke-virtual {v0}, LD0/j;->d()V

    return-void
.end method
