.class public Lw6/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b;->A1(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lw6/b;


# direct methods
.method public constructor <init>(Lw6/b;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$targetFolder",
            "val$sourceFolder",
            "val$finalTargetProjectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$j;->e:Lw6/b;

    iput-object p2, p0, Lw6/b$j;->b:Ljava/io/File;

    iput-object p3, p0, Lw6/b$j;->c:Ljava/io/File;

    iput-object p4, p0, Lw6/b$j;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lw6/b$j$a;

    invoke-direct {v0, p0}, Lw6/b$j$a;-><init>(Lw6/b$j;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lq7/a;->u1(ZLq7/a$d;)V

    return-void
.end method
