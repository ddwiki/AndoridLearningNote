.class Lcom/umeng/socialize/sso/UMQQSsoHandler$5;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/sso/UMQQSsoHandler;->createAuthListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/UMQQSsoHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$5;->this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 592
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3
    .parameter "value"
    .parameter "platform"

    .prologue
    .line 582
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$5;->this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

    #calls: Lcom/umeng/socialize/sso/UMQQSsoHandler;->gotoShare()V
    invoke-static {v0}, Lcom/umeng/socialize/sso/UMQQSsoHandler;->access$0(Lcom/umeng/socialize/sso/UMQQSsoHandler;)V

    .line 588
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$5;->this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

    iget-object v0, v0, Lcom/umeng/socialize/sso/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "\u6388\u6743\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter "e"
    .parameter "platform"

    .prologue
    .line 578
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 574
    return-void
.end method
