.class public Lw5/j$J$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv5/b$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/j$J$a;->a(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lw5/j$J$a;


# direct methods
.method public constructor <init>(Lw5/j$J$a;FLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$value",
            "val$name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/j$J$a$a;->c:Lw5/j$J$a;

    iput p2, p0, Lw5/j$J$a$a;->a:F

    iput-object p3, p0, Lw5/j$J$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "inProjectPath"
        }
    .end annotation

    new-instance p1, Lw5/j$J$a$a$a;

    invoke-direct {p1, p0, p2}, Lw5/j$J$a$a$a;-><init>(Lw5/j$J$a$a;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lq7/a;->u1(ZLq7/a$d;)V

    return-void
.end method
