.class public LP3/b$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP3/b$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LP3/b$d$a;


# direct methods
.method public constructor <init>(LP3/b$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LP3/b$d$a$a;->b:LP3/b$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LP3/b$d$a$a;->b:LP3/b$d$a;

    iget-object v0, v0, LP3/b$d$a;->b:LZ6/g;

    invoke-virtual {v0}, LZ6/g;->q1()V

    iget-object v0, p0, LP3/b$d$a$a;->b:LP3/b$d$a;

    iget-object v0, v0, LP3/b$d$a;->c:LP3/b$d;

    iget-object v0, v0, LP3/b$d;->b:LP3/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->A()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SUCCESS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_ORGANIZATIONS_REFRESHED:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZ6/h;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
