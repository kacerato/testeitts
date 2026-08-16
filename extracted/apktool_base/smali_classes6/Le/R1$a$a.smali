.class public final LLe/R1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/R1$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:LLe/R1$a;


# direct methods
.method public constructor <init>(LLe/R1$a;)V
    .locals 0

    iput-object p1, p0, LLe/R1$a$a;->b:LLe/R1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LLe/R1$a$a;->b:LLe/R1$a;

    iget-object v0, v0, LLe/R1$a;->d:Lhn/d;

    invoke-interface {v0}, Lhn/d;->cancel()V

    return-void
.end method
