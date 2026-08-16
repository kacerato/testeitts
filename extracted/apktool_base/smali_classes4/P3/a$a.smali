.class public LP3/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP3/a;->y(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:LP3/a;


# direct methods
.method public constructor <init>(LP3/a;[Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$formatedSize",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LP3/a$a;->d:LP3/a;

    iput-object p2, p0, LP3/a$a;->b:[Ljava/lang/String;

    iput-object p3, p0, LP3/a$a;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LP3/a$a;->b:[Ljava/lang/String;

    iget-object v1, p0, LP3/a$a;->d:LP3/a;

    iget-object v2, p0, LP3/a$a;->c:Ljava/io/File;

    invoke-static {v1, v2}, LP3/a;->D(LP3/a;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
