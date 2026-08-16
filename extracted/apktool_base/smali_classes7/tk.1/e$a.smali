.class public Ltk/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltk/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Ltk/e$a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ltk/e$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ltk/e$a;->a:Ljava/lang/String;

    iput-object v0, p0, Ltk/e$a;->a:Ljava/lang/String;

    iget-object p1, p1, Ltk/e$a;->b:Ljava/lang/String;

    iput-object p1, p0, Ltk/e$a;->b:Ljava/lang/String;

    return-void
.end method
