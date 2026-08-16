.class public final synthetic Le6/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Le6/E;


# direct methods
.method public synthetic constructor <init>(Le6/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/t;->b:Le6/E;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le6/t;->b:Le6/E;

    invoke-static {v0}, Le6/E;->a(Le6/E;)V

    return-void
.end method
