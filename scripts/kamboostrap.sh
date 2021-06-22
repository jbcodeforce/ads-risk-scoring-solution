kam bootstrap \
--service-repo-url https://github.com/jbcodeforce/ads-risk-scoring-solution.git \
--gitops-repo-url  https://github.com/jbcodeforce/ads-risk-scoring-gitops.git \
--image-repo image-registry.openshift-image-registry.svc:5000/ibmcase/ads-risk-scoring \
--output ads-risk-scoring-gitops \
--git-host-access-token  \
--prefix ads-risk --push-to-git=true \
--overwrite