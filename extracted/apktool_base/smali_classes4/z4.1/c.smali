.class public final synthetic Lz4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz4/b;


# direct methods
.method public synthetic constructor <init>(Lz4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/c;->b:Lz4/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz4/c;->b:Lz4/b;

    invoke-static {v0}, Lz4/b$c$a$a$a;->a(Lz4/b;)V

    return-void
.end method
