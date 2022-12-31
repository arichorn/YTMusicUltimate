# Clean up
	tput setaf 1 && echo -e "==> \033[1mCleaning up...\033[0m"
	rm -rf tmp/ Resources .theos/_/Payload
	echo -e  "==> \033[1mSHASUM256: $(shasum -a 256 packages/*.ipa)\033[0m"	
