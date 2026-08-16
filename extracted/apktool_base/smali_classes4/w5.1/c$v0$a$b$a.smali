.class public Lw5/c$v0$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c$v0$a$b;->a(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;

.field public final synthetic b:Lw5/c$v0$a$b;


# direct methods
.method public constructor <init>(Lw5/c$v0$a$b;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$docTxt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$v0$a$b$a;->b:Lw5/c$v0$a$b;

    iput-object p2, p0, Lw5/c$v0$a$b$a;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    iget-object v0, p0, Lw5/c$v0$a$b$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method
