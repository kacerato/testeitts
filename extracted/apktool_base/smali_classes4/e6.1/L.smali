.class public final synthetic Le6/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Le6/X;


# direct methods
.method public synthetic constructor <init>(Le6/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/L;->b:Le6/X;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le6/L;->b:Le6/X;

    invoke-static {v0}, Le6/X;->c(Le6/X;)V

    return-void
.end method
