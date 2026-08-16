.class public Lorg/luaj/vm2/Upvaldesc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final idx:S

.field public final instack:Z

.field public name:Lorg/luaj/vm2/LuaString;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/LuaString;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    iput-boolean p2, p0, Lorg/luaj/vm2/Upvaldesc;->instack:Z

    int-to-short p1, p3

    iput-short p1, p0, Lorg/luaj/vm2/Upvaldesc;->idx:S

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-short v1, p0, Lorg/luaj/vm2/Upvaldesc;->idx:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/luaj/vm2/Upvaldesc;->instack:Z

    if-eqz v1, :cond_0

    const-string v1, " instack "

    goto :goto_0

    :cond_0
    const-string v1, " closed "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
