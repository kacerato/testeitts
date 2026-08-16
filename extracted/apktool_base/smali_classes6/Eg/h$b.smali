.class public LEg/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEg/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LDg/a;

.field public final b:Z

.field public final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;ZLDg/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEg/h$b;->c:Ljava/util/concurrent/ExecutorService;

    iput-boolean p2, p0, LEg/h$b;->b:Z

    iput-object p3, p0, LEg/h$b;->a:LDg/a;

    return-void
.end method

.method public static synthetic a(LEg/h$b;)LDg/a;
    .locals 0

    iget-object p0, p0, LEg/h$b;->a:LDg/a;

    return-object p0
.end method

.method public static synthetic b(LEg/h$b;)Z
    .locals 0

    iget-boolean p0, p0, LEg/h$b;->b:Z

    return p0
.end method

.method public static synthetic c(LEg/h$b;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, LEg/h$b;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
