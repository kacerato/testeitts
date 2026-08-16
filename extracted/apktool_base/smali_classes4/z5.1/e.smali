.class public final synthetic Lz5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz5/a;


# direct methods
.method public synthetic constructor <init>(Lz5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/e;->b:Lz5/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz5/e;->b:Lz5/a;

    invoke-static {v0}, Lz5/a$e$a$a;->a(Lz5/a;)V

    return-void
.end method
